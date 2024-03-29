import math

def solution(n, stations, w):
    answer = 0
    #한기지국이 도달할 수 있는 최대 거리
    W = w * 2 + 1
    #인덱스를 계속 유지해야함
    start = 1
    for s in stations :
        answer += max(math.ceil((s - w - start) / W), 0)
        start = s + w + 1
        
    if n >= start:
        answer += math.ceil((n - start +1) / W)
    
    
    return answer