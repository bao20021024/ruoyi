import request from '@/utils/request'

// 查询医院烂账记录列表
export function listDead(query) {
  return request({
    url: '/medical/dead/list',
    method: 'get',
    params: query
  })
}

// 查询医院烂账记录详细
export function getDead(id) {
  return request({
    url: '/medical/dead/' + id,
    method: 'get'
  })
}

// 新增医院烂账记录
export function addDead(data) {
  return request({
    url: '/medical/dead',
    method: 'post',
    data: data
  })
}

// 修改医院烂账记录
export function updateDead(data) {
  return request({
    url: '/medical/dead',
    method: 'put',
    data: data
  })
}

// 删除医院烂账记录
export function delDead(id) {
  return request({
    url: '/medical/dead/' + id,
    method: 'delete'
  })
}

// 导出医院烂账记录
export function exportDead(query) {
  return request({
    url: '/medical/dead/export',
    method: 'get',
    params: query
  })
}