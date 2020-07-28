// pages/home/info/info.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      infoH:'',
      shopData:null
  },
  bar(){
     wx.switchTab({
       url: '/pages/shop/shop',
     })
  },
  skip(){
      wx.navigateTo({
        url: 'site/site',
      })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      wx.getSystemInfo({
        success: res=>{
            this.setData({
              infoH: `height:${res.statusBarHeight}px`
            })
        },
      })  
  
    wx.request({
      url: 'http://localhost/wxphp/info.php',
      method:'POST',
      header: {
        "content-type": 'application/x-www-form-urlencoded'
      },
      data:{
        id: JSON.parse(options.shop_data)
      },
      success:res=> {
        this.setData({
          shopData:res.data
        })
        wx.setNavigationBarTitle({
          title: this.data.shopData.name,
        })
      }
    })
      
  },

  add(){
    let json = JSON.stringify(this.data.shopData.id);
     wx.navigateTo({
        url: `join/join?shop_data=${json}`,
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