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
            <el-table-column label="操作" style="margin-left:100px">
                <template slot-scope="scope">
                    <el-button
                            size="mini"
                            type="danger"
                            @click="handleDelete(scope.$index, scope.row)" style="width:100px;height:30px">修改
                    </el-button>
                </template>
            </el-table-column>
        </el-table>
        <el-dialog
                :visible.sync="dialogVisible"
                width="30%"
                :before-close="handleClose">
            <div class="table4">
                <el-input v-model="input4" placeholder="请输入商品图片" class="inp"></el-input>
                <el-input v-model="input" placeholder="请输入商品名称"  class="inp"></el-input>
                <el-input v-model="input1" placeholder="请输入商品描述" class="inp"></el-input>
                <el-input v-model="input2" placeholder="请输入商品价格" class="inp"></el-input>
                <el-input v-model="input5" placeholder="请输入商品数量" class="inp"></el-input>
            </div>
            <span slot="footer" class="dialog-footer">
    <el-button @click="dialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="xg">确 定</el-button>
  </span>
        </el-dialog>
    </div>
</template>

<script>
    import qs from 'qs';

    export default {
        name: "Form",
        data() {
            return {
                tableData: [],
                dialogVisible: false,
                input: '',
                input1: '',
                input2: '',
                input3: '',
                input4: '',
                input5: '',
                src: '',
                id:''
            }
        },
        created() {
            this.$axios.post('http://localhost/wxphp/sj.php').then(res => {
                console.log(typeof res.data);
                this.tableData = typeof res.data === 'object' ? res.data : []
            })
        },
        methods: {
            handleDelete(index, row) {
                this.dialogVisible = true;
                this.input = row.name;
                this.input1 = row.text;
                this.input2 = row.price;
                this.input5 = row.number;
                this.input4 = row.src;
                this.id = row.id;
            },
            handleClose(done) {
                this.$confirm('确认关闭？')
                    .then(_ => {
                        done();
                    })
                    .catch(_ => {
                    });
            },
            xg(){
                let data = {
                    id: this.id,
                    name: this.input,
                    text: this.input1,
                    price: this.input2,
                    number: this.input5,
                    src:this.input4
                };
                this.$axios.post('http://localhost/wxphp/xg.php',qs.stringify(data)).then(res=>{
                    console.log(res.data);
                        this.tableData = res.data;
                        this.dialogVisible = false;
                })
            }
        }
    }
</script>

<style scoped>
    @import "../../../static/user.css";
</style>