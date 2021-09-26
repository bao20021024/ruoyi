import request from '@/utils/request'

// 查询个人档案列表
export function listArchives(query) {
  return request({
    url: '/medical/archives/list',
    method: 'get',
    params: query
  })
}

// 查询个人档案详细
export function getArchives(id) {
  return request({
    url: '/medical/archives/' + id,
    method: 'get'
  })
}

// 修改个人档案
export function updateArchives(data) {
  return request({
    url: '/medical/archives',
    method: 'put',
    data: data
  })
}

// 删除个人档案
export function delArchives(id) {
  return request({
    url: '/medical/archives/' + id,
    method: 'delete'
  })
}

// 导出个人档案
export function exportArchives(query) {
  return request({
    url: '/medical/archives/export',
    method: 'get',
    params: query
  })
}

// 建档
export function jdArchives(data) {
  return request({
    url: '/medical/archives/jd',
    method: 'post',
    data: data
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
