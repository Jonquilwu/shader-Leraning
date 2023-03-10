Shader "Custom/My First Lighting Cookies Shader"
{
	Properties {
		_Tint ("Tint", Color) = (1, 1, 1, 1)
		_MainTex ("Albedo", 2D) = "white" {}
		[Gamma] _Metallic ("Metallic", Range(0, 1)) = 0
		_Smoothness ("Smoothness", Range(0, 1)) = 0.1
	}

	SubShader 
	{
		Pass {
			Tags {
				"LightMode" = "ForwardBase"
			}

			CGPROGRAM

			#pragma target 3.0
			#pragma vertex MyVertexProgram
			#pragma fragment MyFragmentProgram

			#include "My Lighting5.cginc"
			
			ENDCG
		}

		pass{
			Tags{"LightMode" = "ForwardAdd"}
			Blend One One
			ZWrite Off

			CGPROGRAM

			#pragma target 3.0

			#pragma multi_compile_fwdadd

			#pragma vertex MyVertexProgram
			#pragma fragment MyFragmentProgram	
					
			#include "My Lighting5.cginc"

			ENDCG
		}
	}
}
