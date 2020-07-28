// pages/find/find.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    findtop:null,
    find1:null,
    find2:null,
    find3:null
 
  }, 

  goodsone(){
    wx.navigateTo({
      url: 'goods/goods',
    })
  },
  getprize(){
    wx.navigateTo({
      url: 'prize/prize',
    })
  },
  getlife() {
    wx.navigateTo({
      url: 'life/life',
    })
  },
  getchoose() {
    wx.navigateTo({
      url: 'choose/choose',
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

      wx.request({
        url: 'http://localhost/wxphp/findtop.php',
        success:res=>{
            // console.log(res.data)
            this.setData({
                findtop:res.data
            })
        }
      })

      wx.request({
        url: 'http://localhost/wxphp/find1.php',
        success:res=>{
            this.setData({
                find1:res.data
            })
        }
      })
    wx.request({
      url: 'http://localhost/wxphp/find2.php',
      success: res => {
        this.setData({
          find2: res.data
        })
      }
    })
    wx.request({
      url: 'http://localhost/wxphp/find3.php',
      success: res => {
        this.setData({
          find3: res.data
        })
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