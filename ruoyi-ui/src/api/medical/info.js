import request from '@/utils/request'

// 查询门诊卡信息列表
export function listInfo(query) {
  return request({
    url: '/medical/info/list',
    method: 'get',
    params: query
  })
}

// 查询门诊卡信息详细
export function getInfo(id) {
  return request({
    url: '/medical/info/' + id,
    method: 'get'
  })
}

// 新增门诊卡信息
export function addInfo(data) {
  return request({
    url: '/medical/info',
    method: 'post',
    data: data
  })
}

// 修改门诊卡信息
export function updateInfo(data) {
  return request({
    url: '/medical/info',
    method: 'put',
    data: data
  })
}

// 删除门诊卡信息
export function delInfo(id) {
  return request({
    url: '/medical/info/' + id,
    method: 'delete'
  })
}

// 导出门诊卡信息
export function exportInfo(query) {
  return request({
    url: '/medical/info/export',
    method: 'get',
    params: query
  })
}

// 是否有已启用的门诊卡
export function getCostInfoArchives(data) {
  return request({
    url: '/medical/archives/getCostInfo',
    method: 'post',
    data: data
  })
}

// 充值/取现
export function moneyArchives(data) {
  return request({
    url: '/medical/info/money',
    method: 'post',
    data: data
  })
}

// 查询接诊记录列表
export function listReceiverecord(query) {
  return request({
    url: '/medical/receiverecord/list',
    method: 'get',
    params: query
  })
}

// 新增接诊记录
export function jieReceiverecord(data) {
  return request({
    url: '/medical/receiverecord',
    method: 'post',
    data: data
  })
}
