<template>
    <el-table
            :data="tableData"
            style="width: 100%">
        <el-table-column label="用户名" width="180">
            <template slot-scope="scope">
                <span style="margin-left: 10px">{{scope.row.name}}</span>
            </template>
        </el-table-column>
        <el-table-column label="手机号" width="180">
            <template slot-scope="scope">
                <span style="margin-left: 10px">{{scope.row.tel}}</span>
            </template>
        </el-table-column>
        <el-table-column label="密码" width="180">
            <template slot-scope="scope">
                <span style="margin-left: 10px">{{scope.row.pwo}}</span>
            </template>
        </el-table-column>
        <el-table-column label="屏蔽日期" width="180">
            <template slot-scope="scope">
                <span style="margin-left: 10px">{{scope.row.pb}}</span>
            </template>
        </el-table-column>
        <el-table-column label="解封日期" width="180">
            <template slot-scope="scope">
                <span style="margin-left: 10px">{{scope.row.jf}}</span>
            </template>
        </el-table-column>
        <el-table-column label="操作">
            <template slot-scope="scope">
                <el-button
                        size="mini"
                        @click="handleEdit(scope.$index, scope.row)">屏蔽账号
                </el-button>
                <el-button
                        size="mini"
                        type="danger"
                        @click="handleDelete(scope.$index, scope.row)">解封账号
                </el-button>
                <el-button
                        size="mini"
                        type="danger"
                        @click="move(scope.$index, scope.row)">删除账号
                </el-button>
            </template>
        </el-table-column>
    </el-table>
</template>

<script>
    import qs from 'qs';
    export default {
        name: "Page4",
        data() {
            return {
                tableData: [],
            }
        },
        created() {
            this.$axios.post('http://localhost/wxphp/yh.php').then(res => {
                this.tableData = res.data?res.data:[]
            })
        },
        methods: {
            handleEdit(index, row) {
                console.log(row.tel);
                let date = new Date();
                let strDate = date.toLocaleString().replace(/[年月]/g, '-').replace(/[日上下午]/g, '');
                let addTime = this.addDate(new Date(), 7);
                let data = {
                    name: row.tel,
                    state: 'false',
                    data: strDate,
                    time: addTime,
                };
                this.$axios.post('http://localhost/wxphp/yhb.php',qs.stringify(data)).then(res=>{
                    this.$message({
                        message: '屏蔽成功',
                        type: 'success'
                    });
                    this.tableData = res.data;
                })

            },
            handleDelete(index, row) {
                let data = {
                    name: row.tel,
                    state: 'true',
                };
                let data1 ={
                    name: row.tel,
                    pb: '',
                    jf: '',
                }
                this.$axios.post('http://localhost/wxphp/yhb1.php',qs.stringify(data)).then(res=>{
                    this.$axios.post('http://localhost/wxphp/yhth.php',qs.stringify(data1)).then(res=>{
                        this.$message({
                            message: '解封成功',
                            type: 'success'
                        });
                        this.tableData = res.data;
                    })
                })
            },
            move(index, row) {
                let data= {
                    name:row.tel
                };
                this.$axios.post('http://localhost/wxphp/yhsc.php',qs.stringify(data)).then(res=>{
                    console.log(res.data);

                        this.tableData = res.data?res.data:[];

                })
            },
            addDate(date, days){
                if (days == undefined || days == '') {
                    days = 1;
                }
                var date = new Date(date);
                date.setDate(date.getDate() + days);
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hours = date.getHours();
                var minutes = date.getMinutes();
                var s = date.getSeconds();
                var mm = "'" + month + "'";
                var dd = "'" + day + "'";
                if (mm.length == 3) {
                    month = "0" + month;
                }
                if (dd.length == 3) {
                    day = "0" + day;
                }
                if (s < 10) {
                    s = "0" + s;
                }
                var time = date.getFullYear() + "/" + month + "/" + day + " " + hours + ":" + minutes + ":" + s;
                return time;
            }
        }
    }
</script>

<style scoped>

</style>