// pages/classify/classify.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    // list:['a','b','c','d','e','f','g'],
    windownH: 0,
    height: 0,
    //用于记录左侧列表被点击的下标
    leftIndex: 0,
    //用于记录右侧列表当前被选中的id
    rightId: 'r0',
    listLeft: [
      "新品", "众筹", "小米手机", "Pedmi", "黑鲨", "电视", "大家电", "电脑办公", "小爱智能", "路由器", "生活电器", "厨房电器", "智能穿戴", "智能家居", "车载出行", "个户健康", "数码配件", "日用百货", "有品精选", "服务"
    ],
    rightData: [
      {
        title: '新品',
        content: [
          
        ]
      },
      {
        title: '众筹',
        content: []
        
      },
      {
        title: '小米手机',
        content: [
         
         
        ]
      }, {
        title: 'Pedmi',
        content: [
          
        ]
      },
      {
        title: '黑鲨',
        content: [
        ]
      },
      {
        title: '电视',
        content: [
        ]
      },
      {
        title: '大家电',
        content: [
         
        ]
      },
      {
        title: '电脑办公',
        content: [
        
        ]
      },
      {
        title: '小爱智能',
        content: [
        
        ]
      },
      {
        title: '路由器',
        content: [
         
        ]
      },
      {
        title: '生活电器',
        content: [
         
        ]
      },
      {
        title: '厨房电器',
        content: [

        ]
      },
      {
        title: '智能穿戴',
        content: [
         
        ]
      },
      {
        title: '智能家具',
        content: [
         
        ]
      },
      {
        title: '车载出行',
        content: [
         
        ]
      },
      {
        title: '个户健康',
        content: [
          
        ]
      },
      {
        title: '数码配件',
        content: [
         
        ]
      },
      {
        title: '日用百货',
        content: [
         
        ]
      },
      {
        title: '有品精选',
        content: [
          
        ]
      },
      {
        title: '服务',
        content: [
        ]
      },
    ]
  },
  leftFn(e) {
    let index = e.target.dataset.index;
    this.setData({
      rightId: `r${index}`,
      leftIndex: index
    })
  },
  rightFn(e) {
   
    let query = wx.createSelectorQuery();
    let ref = query.selectAll('.right-view');
  
    ref.boundingClientRect(res => {
    
      for (let i in res) {
       
        let top = res[i].top;
        let height = res[i].height;
        if (top <= 0 && top + height >= 20) {
          this.setData({
            leftIndex: i
          })
          break;
        }
      }

      let maxH = e.detail.scrollHeight - this.data.windownH;
      if (e.detail.scrollTop >= maxH) {
        this.setData({
          leftIndex: this.data.listLeft.length - 1
        })

      }
    })
    query.exec();
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //读取当前屏幕的视窗高度
    wx.getSystemInfo({
      success: res => {
        this.setData({
          windownH: res.windowHeight
        })
      },
    })
    wx.request({
      url: 'http://localhost/wxphp/classify.php',
      success:res=>{
        for(let i = 0; i < res.data.length;i++){
            let a = res.data[i];
          if(a.type == '新品'){
            this.data.rightData[0].content.push(a);
          } else if (a.type == '众筹'){
            this.data.rightData[1].content.push(a);
          } else if (a.type == '小米手机'){
            this.data.rightData[2].content.push(a);
          } else if (a.type == 'Redmi') {
            this.data.rightData[3].content.push(a);
          } else if (a.type == '黑鲨') {
            this.data.rightData[4].content.push(a);
          } else if (a.type == '电视') {
            this.data.rightData[5].content.push(a);
          } else if (a.type == '大家电') {
            this.data.rightData[6].content.push(a);
          } else if (a.type == '电脑办公') {
            this.data.rightData[7].content.push(a);
          } else if (a.type == '小爱智能') {
            this.data.rightData[8].content.push(a);
          } else if (a.type == '路由器') {
            this.data.rightData[9].content.push(a);
          } else if (a.type == '生活电器') {
            this.data.rightData[10].content.push(a);
          } else if (a.type == '厨房电器') {
            this.data.rightData[11].content.push(a);
          }else if (a.type == '智能穿戴') {
            this.data.rightData[12].content.push(a);
          } else if (a.type == '智能家居') {
            this.data.rightData[13].content.push(a);
          } else if (a.type == '车载出行') {
            this.data.rightData[14].content.push(a);
          } else if (a.type == '个护健康') {
            this.data.rightData[15].content.push(a);
          } else if (a.type == '数码配件') {
            this.data.rightData[16].content.push(a);
          } else if (a.type == '日用百货') {
            this.data.rightData[17].content.push(a);
          } else if (a.type == '有品精选') {
            this.data.rightData[18].content.push(a);
          } else if (a.type == '服务') {
            this.data.rightData[19].content.push(a);
          }
          this.setData({
            rightData:this.data.rightData
          })
        }
      }
    })
  },
 
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})