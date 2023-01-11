/****************************************************
    文件：ScaleTransformation.cs
    作者：Olivia
    日期：2022/10/30 11:29:28
    功能：Nothing
*****************************************************/

using UnityEngine;

public class ScaleTransformation : Transformation
{

    public Vector3 scale;

    public override Matrix4x4 Matrix
    {
        get
        {
            Matrix4x4 matrix = new Matrix4x4();
            matrix.SetRow(0, new Vector4(scale.x, 0f, 0f, 0));
            matrix.SetRow(1, new Vector4(0f, scale.y, 0f, 0));
            matrix.SetRow(2, new Vector4(0f, 0f, scale.z, 0));
            matrix.SetRow(3, new Vector4(0f, 0f, 0f, 1f));
            return matrix;
        }
    }
}

