import request from '@/utils/request'

// 查询医生看病流程列表
export function listAction(query) {
  return request({
    url: '/medical/action/list',
    method: 'get',
    params: query
  })
}

// 查询医生看病流程详细
export function getAction(id) {
  return request({
    url: '/medical/action/' + id,
    method: 'get'
  })
}

// 新增医生看病流程
export function addAction(data) {
  return request({
    url: '/medical/action',
    method: 'post',
    data: data
  })
}

// 修改医生看病流程
export function updateAction(data) {
  return request({
    url: '/medical/action',
    method: 'put',
    data: data
  })
}

// 删除医生看病流程
export function delAction(id) {
  return request({
    url: '/medical/action/' + id,
    method: 'delete'
  })
}

// 导出医生看病流程
export function exportAction(query) {
  return request({
    url: '/medical/action/export',
    method: 'get',
    params: query
  })
}