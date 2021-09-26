import request from '@/utils/request'

// 查询门诊卡充值记录列表
export function listRecord(query) {
  return request({
    url: '/medical/record/list',
    method: 'get',
    params: query
  })
}

// 查询门诊卡充值记录详细
export function getRecord(id) {
  return request({
    url: '/medical/record/' + id,
    method: 'get'
  })
}

// 新增门诊卡充值记录
export function addRecord(data) {
  return request({
    url: '/medical/record',
    method: 'post',
    data: data
  })
}

// 修改门诊卡充值记录
export function updateRecord(data) {
  return request({
    url: '/medical/record',
    method: 'put',
    data: data
  })
}

// 删除门诊卡充值记录
export function delRecord(id) {
  return request({
    url: '/medical/record/' + id,
    method: 'delete'
  })
}

// 导出门诊卡充值记录
export function exportRecord(query) {
  return request({
    url: '/medical/record/export',
    method: 'get',
    params: query
  })
}