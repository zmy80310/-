// pages/components/classitem/classitem.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {
    mydata: {
      type: Object,
      value: {},
      observer(newVal, oldVal) {
        this.setData({
          list: newVal
        })
      }
    },
  },

  /**
   * 组件的初始数据
   */
  data: {
    list: {}
  },

  /**
   * 组件的方法列表
   */
  methods: {
    onInfo(e) {
      //路由到详情页
      let index = e.currentTarget.dataset.id;
      console.log(index);
      //根据索引从list中读取数据
      let json = JSON.stringify(index);
      //页面路由并传递数据
      wx.navigateTo({
        url: `/pages/home/info/info?shop_data=${json}`,
      })
    },
  }
})
