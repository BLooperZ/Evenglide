RSRC                    VisualShader            m�L�`v�T                                            �      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    linked_parent_graph_frame    varying_name    varying_type    script    input_name    op_type 	   operator 	   constant    initialized    properties 	   function    noise_type    seed 
   frequency    offset    fractal_type    fractal_octaves    fractal_lacunarity    fractal_gain    fractal_weighted_strength    fractal_ping_pong_strength    cellular_distance_function    cellular_jitter    cellular_return_type    domain_warp_enabled    domain_warp_type    domain_warp_amplitude    domain_warp_frequency    domain_warp_fractal_type    domain_warp_fractal_octaves    domain_warp_fractal_lacunarity    domain_warp_fractal_gain    width    height    invert    in_3d_space    generate_mipmaps 	   seamless    seamless_blend_skirt    as_normal_map    bump_strength 
   normalize    color_ramp    noise    source    texture    texture_type    code    graph_offset    mode    modes/blend    flags/skip_vertex_transform    flags/unshaded    flags/light_only    flags/world_vertex_coords    varyings/world_position    nodes/vertex/0/position    nodes/vertex/2/node    nodes/vertex/2/position    nodes/vertex/3/node    nodes/vertex/3/position    nodes/vertex/4/node    nodes/vertex/4/position    nodes/vertex/5/node    nodes/vertex/5/position    nodes/vertex/6/node    nodes/vertex/6/position    nodes/vertex/7/node    nodes/vertex/7/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/8/node    nodes/fragment/8/position    nodes/fragment/9/node    nodes/fragment/9/position    nodes/fragment/10/node    nodes/fragment/10/position    nodes/fragment/11/node    nodes/fragment/11/position    nodes/fragment/12/node    nodes/fragment/12/position    nodes/fragment/13/node    nodes/fragment/13/position    nodes/fragment/14/node    nodes/fragment/14/position    nodes/fragment/19/node    nodes/fragment/19/position    nodes/fragment/20/node    nodes/fragment/20/position    nodes/fragment/22/node    nodes/fragment/22/position    nodes/fragment/23/node    nodes/fragment/23/position    nodes/fragment/24/node    nodes/fragment/24/position    nodes/fragment/25/node    nodes/fragment/25/position    nodes/fragment/26/node    nodes/fragment/26/position    nodes/fragment/27/node    nodes/fragment/27/position    nodes/fragment/28/node    nodes/fragment/28/position    nodes/fragment/29/node    nodes/fragment/29/position    nodes/fragment/30/node    nodes/fragment/30/position    nodes/fragment/31/node    nodes/fragment/31/position    nodes/fragment/32/node    nodes/fragment/32/position    nodes/fragment/33/node    nodes/fragment/33/position    nodes/fragment/34/node    nodes/fragment/34/position    nodes/fragment/35/node    nodes/fragment/35/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections       Script     res://shaders/addon/worley3d.gd d�^ja�d#   ,   local://VisualShaderNodeVaryingSetter_tavqg �      $   local://VisualShaderNodeInput_d28x2 �      $   local://VisualShaderNodeInput_nhrwl 2      ,   local://VisualShaderNodeVectorCompose_2v4x3 k      .   local://VisualShaderNodeVectorDecompose_4wgrj �      /   local://VisualShaderNodeTransformVecMult_nungx M      $   local://VisualShaderNodeInput_at6ee �      )   local://VisualShaderNodeSmoothStep_0j3p7 �      ,   local://VisualShaderNodeColorConstant_ehgfe :      $   local://VisualShaderNodeRemap_nwdv4 �      ,   local://VisualShaderNodeColorConstant_lihn2 6      $   local://VisualShaderNodeInput_alqbs d      ,   local://VisualShaderNodeVectorCompose_7k8by �      &   local://VisualShaderNodeFloatOp_o6jau �      &   local://VisualShaderNodeFloatOp_6jy6n )      &   local://VisualShaderNodeFloatOp_tavqg �      %   local://VisualShaderNodeCustom_nhrwl �      &   local://VisualShaderNodeFloatOp_2v4x3 �      '   local://VisualShaderNodeVectorOp_d28x2 �      ,   local://VisualShaderNodeVaryingGetter_tavqg       '   local://VisualShaderNodeVectorOp_nhrwl n      *   local://VisualShaderNodeIntConstant_tavqg �      &   local://VisualShaderNodeFloatOp_d28x2       (   local://VisualShaderNodeFloatFunc_nhrwl K      &   local://VisualShaderNodeFloatOp_4wgrj �      &   local://VisualShaderNodeFloatOp_nungx �      )   local://VisualShaderNodeSmoothStep_tavqg       "   local://VisualShaderNodeMix_d28x2 �      ,   local://VisualShaderNodeColorConstant_nhrwl       %   local://VisualShaderNodeCustom_tavqg 6      #   local://VisualShaderNodeStep_d28x2 �         local://FastNoiseLite_tavqg *          local://NoiseTexture2D_d28x2 `       &   local://VisualShaderNodeTexture_nhrwl �          res://shaders/waterShader.res �          VisualShaderNodeVaryingSetter             world_position                   VisualShaderNodeInput    	         model_matrix          VisualShaderNodeInput    	         vertex          VisualShaderNodeVectorCompose                                                   �?           �?
                   VisualShaderNodeVectorDecompose                    
           
                !   VisualShaderNodeTransformVecMult                       VisualShaderNodeInput    	         uv          VisualShaderNodeSmoothStep                              )     ����?      )     ףp=�?            ?         VisualShaderNodeColorConstant              ��?  �?  �?         VisualShaderNodeRemap          
                                   �?  �?  �?                                �?  �?  �?                      
                  VisualShaderNodeColorConstant             VisualShaderNodeInput    	         time          VisualShaderNodeVectorCompose             VisualShaderNodeFloatOp                                      �B                  VisualShaderNodeFloatOp                                      �A                  VisualShaderNodeFloatOp                                 )     ffff�?                  VisualShaderNodeCustom                                                  )      �t�h?           �?                                      VisualShaderNodeFloatOp                                 )      ��Q�?                  VisualShaderNodeVectorOp             VisualShaderNodeVaryingGetter             world_position                   VisualShaderNodeVectorOp                                              �?  �?  �?                  VisualShaderNodeIntConstant                      VisualShaderNodeFloatOp                      VisualShaderNodeFloatFunc                      VisualShaderNodeFloatOp                      VisualShaderNodeFloatOp                                      �?                  VisualShaderNodeSmoothStep                    )     hfff�?      )     �p=
�?            ?         VisualShaderNodeMix                                              �?  �?  �?            ?   ?   ?
                  VisualShaderNodeColorConstant             VisualShaderNodeCustom                                                  )      �Mb�?           �?                                      VisualShaderNodeStep                    )      ��Q�?                      FastNoiseLite                   �{�;         NoiseTexture2D    0                     VisualShaderNodeTexture    2                      VisualShader J   4      �  shader_type canvas_item;
render_mode blend_mix;


// Varyings
varying vec3 var_world_position;



// WorleyNoise3D
#include "res://shaders/addon/worley3d.gdshaderinc"

void vertex() {
// Input:3
	mat4 n_out3p0 = MODEL_MATRIX;


// Input:4
	vec2 n_out4p0 = VERTEX;


// VectorDecompose:6
	float n_out6p0 = n_out4p0.x;
	float n_out6p1 = n_out4p0.y;


// VectorCompose:5
	float n_in5p2 = 1.00000;
	float n_in5p3 = 1.00000;
	vec4 n_out5p0 = vec4(n_out6p0, n_out6p1, n_in5p2, n_in5p3);


// TransformVectorMult:7
	vec3 n_out7p0 = (n_out3p0 * vec4(vec3(n_out5p0.xyz), 1.0)).xyz;


// VaryingSetter:2
	var_world_position = n_out7p0;


}

void fragment() {
// Input:3
	vec2 n_out3p0 = UV;


// Input:10
	float n_out10p0 = TIME;


// FloatOp:12
	float n_in12p1 = 100.00000;
	float n_out12p0 = n_out10p0 * n_in12p1;


// FloatOp:13
	float n_in13p1 = 30.00000;
	float n_out13p0 = n_out10p0 * n_in13p1;


// VectorCompose:11
	float n_in11p2 = 0.00000;
	vec3 n_out11p0 = vec3(n_out12p0, n_out13p0, n_in11p2);


// VaryingGetter:23
	vec3 n_out23p0 = var_world_position;


// VectorOp:24
	vec3 n_in24p1 = vec3(1.00000, 1.00000, 1.00000);
	vec3 n_out24p0 = n_out23p0 * n_in24p1;


// VectorOp:22
	vec3 n_out22p0 = n_out11p0 + n_out24p0;


// FloatOp:20
	float n_in20p1 = 0.25500;
	float n_out20p0 = n_out10p0 * n_in20p1;


	float n_out19p0;
	float n_out19p1;
// WorleyNoise3D:19
	float n_in19p2 = 0.00300;
	float n_in19p3 = 1.00000;
	{
		vec2 n_out19p0n_out19p1 = _cellular3dNoiseFunc(vec3((vec3(n_out3p0, 0.0).xy+n_out22p0.xy)*n_in19p2, n_out20p0), min(max(n_in19p3, 0.0), 1.0));
		n_out19p0 = n_out19p0n_out19p1.x;
		n_out19p1 = n_out19p0n_out19p1.y;
	}


// FloatOp:14
	float n_in14p1 = 0.70000;
	float n_out14p0 = pow(n_out19p0, n_in14p1);


// SmoothStep:4
	float n_in4p0 = 0.56000;
	float n_in4p1 = 1.64000;
	float n_out4p0 = smoothstep(n_in4p0, n_in4p1, n_out14p0);


// ColorConstant:6
	vec4 n_out6p0 = vec4(0.000000, 0.600000, 1.000000, 1.000000);


// ColorConstant:9
	vec4 n_out9p0 = vec4(1.000000, 1.000000, 1.000000, 1.000000);


	vec3 n_out8p0;
// Remap:8
	vec3 n_in8p1 = vec3(0.00000, 0.00000, 0.00000);
	vec3 n_in8p2 = vec3(1.00000, 1.00000, 1.00000);
	{
		vec3 __input_range = n_in8p2 - n_in8p1;
		vec3 __output_range = vec3(n_out9p0.xyz) - vec3(n_out6p0.xyz);
		n_out8p0 = vec3(n_out6p0.xyz) + __output_range * ((vec3(n_out4p0) - n_in8p1) / __input_range);
	}


// ColorConstant:32
	vec4 n_out32p0 = vec4(1.000000, 1.000000, 1.000000, 1.000000);


	float n_out33p0;
	float n_out33p1;
// WorleyNoise3D:33
	float n_in33p2 = 0.00800;
	float n_in33p3 = 1.00000;
	{
		vec2 n_out33p0n_out33p1 = _cellular3dNoiseFunc(vec3((vec3(n_out3p0, 0.0).xy+n_out22p0.xy)*n_in33p2, n_out20p0), min(max(n_in33p3, 0.0), 1.0));
		n_out33p0 = n_out33p0n_out33p1.x;
		n_out33p1 = n_out33p0n_out33p1.y;
	}


// Step:34
	float n_in34p0 = 0.76000;
	float n_out34p0 = step(n_in34p0, n_out33p0);


// Mix:31
	vec3 n_out31p0 = mix(n_out8p0, vec3(n_out32p0.xyz), vec3(n_out34p0));


// Output:0
	COLOR.rgb = n_out31p0;


}
 5   
   �c�D7FC6         :          <         0,4 =   
     �C  �C>             ?   
     �C   B@            A   
      �  pBB            C   
     4�  4CD            E   
     ��  �CF            G   
     ��  \CH            I   
      C  �CJ                                                                                           K   
     �D  4CL            M   
     ��  �BN            O   
     D  �CP            Q   
   �R�CaPDR         	   S   
   _]D��eDT         
   U   
   5`�CS#�DV            W   
     ��  HCX            Y   
     ��  �CZ            [   
     ��  �C\            ]   
     ��   D^            _   
   ��Cw��C`            a   
     C  Cb            c   
     ��  �Cd            e   
     p�  9Df            g   
     /�  fDh            i   
     �� ��Dj            k   
     aD  �Dl            m   
     �D � En            o   
     �D �
Ep            q   
    ��D �Er            s   
    ��D  Et            u   
   r�oD�Y�Cv            w   
   ���D�eDx            y   
   �,�DW��Dz            {   
     �C   �|            }   
     uD  �B~         !      
   |��D�×C�       |                	                                                                                                                         
              
              
                                                                                                                                                                                           !              !      !             !       "      "                    !            RSRC