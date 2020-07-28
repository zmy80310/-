// pages/home/info/site/site.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      shopData:null,
      list:0,
      list1:0
  },
  newly(){
      wx.navigateTo({
        url: 'sites/sites',
      })
  },
  newlt(e){
    let item = {
      look:true,
      id: e.target.dataset.id
    }
    let id = JSON.stringify(item
    );
      wx.navigateTo({
        url: `sites/sites?item=${id}`,
      })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
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
    //获取收货地址
    wx.getStorage({
      key: 'uname',
      success: res => {
        wx.request({
          url: 'http://localhost/wxphp/dz.php',
          method: 'POST',
          header: {
            "content-type": 'application/x-www-form-urlencoded'
          },
          data: {
            tel: res.data
          },
          success: res => {
            console.log(res.data);
            this.setData({
                shopData:res.data
            })
            
          }
        })
      },
    })
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