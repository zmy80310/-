// pages/component/shopitem/shopitem.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {
      myprop:{
        type:Object,
        value:{},
        observer:function(newVal,olaVal){
          this.setData({
              shopData:newVal,
          })
        }
      }
  },

  /**
   * 组件的初始数据
   */
  data: {
    shopData:{}
  },

  /**
   * 组件的方法列表
   */
  methods: {
    cl(){
      let json = JSON.stringify(this.data.shopData.id);
      wx.navigateTo({
        url: `/pages/home/info/info?shop_data=${json}`,
      })
    }
  }
})
