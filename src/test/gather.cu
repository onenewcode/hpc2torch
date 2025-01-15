#include <cuda_fp16.hpp>

template <typename T, int BLOCK_DIM_x, int numPerThreadx>
__global__ void kernel(T const *input, T *output,
                                   int othersize, int dimsize, int stride)
{

}
// TODO 目前进支持二维，且长度不超过1024
template <typename T>
void gatherLaunch(int const rank,int const shapesize,int const axis,int const *shape,void const *input,int const *index, void *output)
{
    
}

extern "C" void gather_f32(int const rank,int const shapesize,int const axis,int const *shape,void const *input,int const *index, void *output)
{
    gatherLaunch<float>(rank,shapesize,axis,shape,static_cast<float const*>(input),index, static_cast<float*>(output));
}
extern "C" void gather_f16(int const rank,int const shapesize,int const axis,int const *shape,void const *input,int const *index, void *output)
{
    gatherLaunch<half>(rank,shapesize,axis,shape,static_cast<half const*>(input),index, static_cast<half*>(output));
}