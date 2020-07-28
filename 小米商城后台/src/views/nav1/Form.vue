<template>
    <div class="form">
        <el-table :data="tableData"
                  style="width: 100%">
            <el-table-column label="图片" width="180">
                <template slot-scope="scope">
                    <img :src="scope.row.src" alt=""
                    style="width:100%;height:100%">
                </template>
            </el-table-column>
            <el-table-column label="名称" width="180">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{scope.row.name}}</span>
                </template>
            </el-table-column>
            <el-table-column label="详情" width="180">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{scope.row.text}}</span>
                </template>
            </el-table-column>
            <el-table-column label="数量" width="180">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{scope.row.number}}</span>
                </template>
            </el-table-column>
            <el-table-column label="价格" width="180">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{scope.row.price}}</span>
                </template>
            </el-table-column>
            <el-table-column label="状态" width="180">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{scope.row.state}}</span>
                </template>
            </el-table-column>
            <el-table-column label="类型" width="180">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{scope.row.type}}</span>
                </template>
            </el-table-column>
            <el-table-column  label="操作" style="margin-left:100px">
                <template slot-scope="scope">
                    <el-button
                            size="mini"
                            @click="handleEdit(scope.$index, scope.row)"
                    style="width:60px;height:30px" >上架
                    </el-button>
                    <el-button
                            size="mini"
                            type="danger"
                            @click="handleDelete(scope.$index, scope.row)" style="width:60px;height:30px">下架
                    </el-button>
                    <el-button
                            size="mini"
                            type="danger"
                            @click="move(scope.$index, scope.row)" style="width:60px;height:30px">删除
                    </el-button>
                </template>
            </el-table-column>
        </el-table>
    </div>
</template>

<script>
    import qs from 'qs';
    export default {
        name: "Form",
        data() {
            return {
                tableData: []
            }
        },
        created() {
            this.$axios.post('http://localhost/wxphp/sj.php').then(res=>{
                this.tableData = typeof res.data === 'object' ? res.data : [];
            })
        },
        methods: {
            handleEdit(index, row) {
                if(row.number < 10){
                    this.$message({
                        message: '该商品数量小于10件不能上架,请先去修改数量',
                        type: 'warning'
                    });
                }else{
                    if(row.state === 'false'){
                        let data = {
                            id: row.id,
                            state: 'true',
                        };
                        this.$axios.post('http://localhost/wxphp/tsj.php',qs.stringify(data)).then(res=>{
                            this.tableData = res.data;
                            this.$message({
                                message: '上架成功',
                                type: 'success'
                            });
                        })
                    }else{
                        this.$message({
                            message: '该商品已经是上架状态',
                            type: 'warning'
                        });
                    }
                }
            },
            handleDelete(index, row) {
                if(row.number < 10){
                    this.$message({
                        message: '该商品数量小于10件不能上架,请先去修改数量',
                        type: 'warning'
                    });
                }else{
                    if(row.state === 'true'){
                        let data = {
                            id: row.id,
                            state: 'false',
                        };
                        this.$axios.post('http://localhost/wxphp/tsj.php',qs.stringify(data)).then(res=>{
                            this.tableData = res.data;
                            this.$message({
                                message: '下架成功',
                                type: 'success'
                            });
                        })
                    }else{
                        this.$message({
                            message: '该商品已经是下架状态',
                            type: 'warning'
                        });
                    }
                }
            },
            move(index,row){
                this.$confirm('此操作将永久删除该商品, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    let data1 = {
                        id:row.id,
                    };
                    this.$axios.post('http://localhost/wxphp/sc.php',qs.stringify(data1)).then(res=>{
                        console.log(res.data);
                        this.tableData = res.data;

                    });
                    this.$message({
                        type: 'success',
                        message: '删除成功!'
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            }
        }
    }
</script>

<style scoped>
    @import "../../../static/form.css";
</style>