import request from '@/utils/request'

// 查询PACS影像信息列表
export function listPacs(query) {
  return request({
    url: '/medical/pacs/list',
    method: 'get',
    params: query
  })
}

// 查询PACS影像信息详细
export function getPacs(id) {
  return request({
    url: '/medical/pacs/' + id,
    method: 'get'
  })
}

// 新增PACS影像信息
export function addPacs(data) {
  return request({
    url: '/medical/pacs',
    method: 'post',
    data: data
  })
}

// 修改PACS影像信息
export function updatePacs(data) {
  return request({
    url: '/medical/pacs',
    method: 'put',
    data: data
  })
}

// 删除PACS影像信息
export function delPacs(id) {
  return request({
    url: '/medical/pacs/' + id,
    method: 'delete'
  })
}

// 导出PACS影像信息
export function exportPacs(query) {
  return request({
    url: '/medical/pacs/export',
    method: 'get',
    params: query
  })
}