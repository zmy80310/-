<template>
    <div class="page">
        <div id="myChart1" :style="{width:'1000px',height:'600px'}"></div>
    </div>
</template>
<script>
    export default {
        name: "Page8",
        data(){
            return{
                msg:"Welcome to Your Vue.js App",
            }
        },
        mounted() {
            this.drawLine();
        },
        methods:{
            drawLine(){
                this.$axios.post('http://localhost/zmy/server/php/yh.php').then(res=>{
                    let nan = 0;
                    let nv = 0;
                    for (let x of res.data){
                        if(x.sex == 1){
                            nan++
                        }else{
                            nv++
                        }
                    }
                    let myChart = this.$echarts.init(document.getElementById('myChart1'));

                    //绘制图标
                    myChart.setOption({
                        color: ['#f00','#000'],
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                            }
                        },
                        grid: {
                            containLabel: true
                        },
                        xAxis: [
                            {
                                type: 'category',
                                data: ['男','女'],
                                // axisTick: {
                                // 	alignWithLabel: true
                                // }
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value'
                            }
                        ],
                        series: [
                            {
                                // name: '直接访问',
                                type: 'pie',
                                // barWidth: '60%',
                                data: [{
                                    value:nan,
                                    name:'男'
                                },{
                                    value:nv,
                                    name:'女'
                                }]
                            }
                        ]
                    })


                })
            }
        }
    }
</script>