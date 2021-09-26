import request from '@/utils/request'

// 查询操作记录列表
export function listDo(query) {
  return request({
    url: '/medical/do/list',
    method: 'get',
    params: query
  })
}

// 查询操作记录详细
export function getDo(id) {
  return request({
    url: '/medical/do/' + id,
    method: 'get'
  })
}

// 新增操作记录
export function addDo(data) {
  return request({
    url: '/medical/do',
    method: 'post',
    data: data
  })
}

// 修改操作记录
export function updateDo(data) {
  return request({
    url: '/medical/do',
    method: 'put',
    data: data
  })
}

// 删除操作记录
export function delDo(id) {
  return request({
    url: '/medical/do/' + id,
    method: 'delete'
  })
}

// 导出操作记录
export function exportDo(query) {
  return request({
    url: '/medical/do/export',
    method: 'get',
    params: query
  })
}