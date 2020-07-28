<template>
    <div class="table">
        <div class="table2">
            <el-input v-model="input4" placeholder="请输入商品图片" class="inp"></el-input>
            <el-input v-model="input" placeholder="请输入商品名称"  class="inp"></el-input>
            <el-input v-model="input1" placeholder="请输入商品描述" class="inp"></el-input>
            <el-input v-model="input2" placeholder="请输入商品价格" class="inp"></el-input>
            <el-input v-model="input3" placeholder="请输入商品类型" class="inp"></el-input>
            <el-input v-model="input5" placeholder="请输入商品数量" class="inp"></el-input>
        </div>
        <div class="btn" @click="upload">上 &nbsp;&nbsp; 传</div>
    </div>
</template>
<script>
    import qs from 'qs';
    export default {
        name:"Table",
        data() {
            return {
                imageUrl: '',
                input:'',
                input1:'',
                input2:'',
                input3:'',
                input4:'',
                input5:'',
                src:''
            };
        },
        methods: {
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
                this.src = res;
            },
            beforeAvatarUpload(file) {
                const isLt2M = file.size / 1024 / 1024 < 2;
                if (!isLt2M) {
                    this.$message.error('上传头像图片大小不能超过 2MB!');
                }
                return  isLt2M;
            },
            upload(){
                if(this.input && this.input1 && this.input2 && this.input3 && this.input4 && this.input5 != ''){
                    let data = {
                        uname:this.input,
                        text:this.input1,
                        price:this.input2,
                        number:this.input5,
                        type:this.input3,
                        img:this.input4,
                        state:'true'
                    };
                    this.$axios.post('http://localhost/wxphp/cun.php',qs.stringify(data)).then(res=>{
                        if(res.data === '添加成功'){
                            this.input = '';
                            this.input1 = '';
                            this.input2 = '';
                            this.input3 = '';
                            this.input4 = '';
                            this.input5 = '';
                        }
                    })
                }else{
                    this.$message({
                        message: '输入内容不能为空',
                        type: 'warning'
                    });
                }
            }
        }
    }
</script>

<style scoped>
    @import "../../../static/table.css";
</style>