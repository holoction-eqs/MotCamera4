.class public final enum Lbv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final enum A:Lbv;

.field private static final enum B:Lbv;

.field private static final enum C:Lbv;

.field private static final enum D:Lbv;

.field private static final enum E:Lbv;

.field private static final enum F:Lbv;

.field private static final enum G:Lbv;

.field private static final enum H:Lbv;

.field private static final enum I:Lbv;

.field private static final enum J:Lbv;

.field private static final enum K:Lbv;

.field private static final enum L:Lbv;

.field private static final enum M:Lbv;

.field private static final enum N:Lbv;

.field private static final enum O:Lbv;

.field private static final enum P:Lbv;

.field private static final enum Q:Lbv;

.field private static final enum R:Lbv;

.field private static final enum S:Lbv;

.field private static final enum T:Lbv;

.field private static final enum U:Lbv;

.field private static final enum V:Lbv;

.field private static final enum W:Lbv;

.field private static final enum X:Lbv;

.field private static final enum Y:Lbv;

.field private static final enum Z:Lbv;

.field public static final enum a:Lbv;

.field private static final enum aa:Lbv;

.field private static final ab:[Lbv;

.field private static final synthetic ac:[Lbv;

.field public static final enum b:Lbv;

.field public static final enum c:Lbv;

.field public static final enum d:Lbv;

.field public static final enum e:Lbv;

.field public static final enum f:Lbv;

.field public static final enum g:Lbv;

.field private static final enum j:Lbv;

.field private static final enum k:Lbv;

.field private static final enum l:Lbv;

.field private static final enum m:Lbv;

.field private static final enum n:Lbv;

.field private static final enum o:Lbv;

.field private static final enum p:Lbv;

.field private static final enum q:Lbv;

.field private static final enum r:Lbv;

.field private static final enum s:Lbv;

.field private static final enum t:Lbv;

.field private static final enum u:Lbv;

.field private static final enum v:Lbv;

.field private static final enum w:Lbv;

.field private static final enum x:Lbv;

.field private static final enum y:Lbv;

.field private static final enum z:Lbv;


# instance fields
.field public final h:I

.field public final i:Lbu;


# direct methods
.method public static constructor <clinit>()V
    .locals 73

    new-instance v7, Lbv;

    move-object v6, v7

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v29, Lbu;->a:Lbu;

    sget-object v47, Lco;->e:Lco;

    move-object v0, v7

    move-object/from16 v4, v29

    move-object/from16 v5, v47

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v7, Lbv;->j:Lbv;

    new-instance v0, Lbv;

    move-object v7, v0

    const-string v9, "FLOAT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    sget-object v53, Lco;->d:Lco;

    move-object v8, v0

    move-object/from16 v12, v29

    move-object/from16 v13, v53

    invoke-direct/range {v8 .. v13}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->k:Lbv;

    new-instance v0, Lbv;

    move-object v8, v0

    const-string v10, "INT64"

    const/4 v11, 0x2

    const/4 v12, 0x2

    sget-object v60, Lco;->c:Lco;

    move-object v9, v0

    move-object/from16 v13, v29

    move-object/from16 v14, v60

    invoke-direct/range {v9 .. v14}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->l:Lbv;

    new-instance v0, Lbv;

    move-object v9, v0

    const-string v11, "UINT64"

    const/4 v12, 0x3

    const/4 v13, 0x3

    move-object v10, v0

    move-object/from16 v14, v29

    move-object/from16 v15, v60

    invoke-direct/range {v10 .. v15}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->m:Lbv;

    new-instance v0, Lbv;

    move-object v10, v0

    const-string v12, "INT32"

    const/4 v13, 0x4

    const/4 v14, 0x4

    sget-object v1, Lco;->b:Lco;

    move-object v11, v0

    move-object/from16 v15, v29

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->n:Lbv;

    new-instance v0, Lbv;

    move-object v11, v0

    const-string v13, "FIXED64"

    const/4 v14, 0x5

    const/4 v15, 0x5

    move-object v12, v0

    move-object/from16 v16, v29

    move-object/from16 v17, v60

    invoke-direct/range {v12 .. v17}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->o:Lbv;

    new-instance v0, Lbv;

    move-object v12, v0

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    const/16 v16, 0x6

    move-object v13, v0

    move-object/from16 v17, v29

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->p:Lbv;

    new-instance v0, Lbv;

    move-object v13, v0

    const-string v15, "BOOL"

    const/16 v16, 0x7

    const/16 v17, 0x7

    sget-object v2, Lco;->f:Lco;

    move-object v14, v0

    move-object/from16 v18, v29

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->q:Lbv;

    new-instance v0, Lbv;

    move-object v14, v0

    const-string v16, "STRING"

    const/16 v17, 0x8

    const/16 v18, 0x8

    sget-object v38, Lco;->g:Lco;

    move-object v15, v0

    move-object/from16 v19, v29

    move-object/from16 v20, v38

    invoke-direct/range {v15 .. v20}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->r:Lbv;

    new-instance v0, Lbv;

    move-object v15, v0

    const-string v17, "MESSAGE"

    const/16 v18, 0x9

    const/16 v19, 0x9

    sget-object v66, Lco;->j:Lco;

    move-object/from16 v16, v0

    move-object/from16 v20, v29

    move-object/from16 v21, v66

    invoke-direct/range {v16 .. v21}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->a:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v16, v0

    const-string v18, "BYTES"

    const/16 v19, 0xa

    const/16 v20, 0xa

    sget-object v3, Lco;->h:Lco;

    move-object/from16 v17, v0

    move-object/from16 v21, v29

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->s:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v17, v0

    const-string v19, "UINT32"

    const/16 v20, 0xb

    const/16 v21, 0xb

    move-object/from16 v18, v0

    move-object/from16 v22, v29

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->t:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v18, v0

    const-string v20, "ENUM"

    const/16 v21, 0xc

    const/16 v22, 0xc

    sget-object v4, Lco;->i:Lco;

    move-object/from16 v19, v0

    move-object/from16 v23, v29

    move-object/from16 v24, v4

    invoke-direct/range {v19 .. v24}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->u:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v19, v0

    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    const/16 v23, 0xd

    move-object/from16 v20, v0

    move-object/from16 v24, v29

    move-object/from16 v25, v1

    invoke-direct/range {v20 .. v25}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->v:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v20, v0

    const-string v22, "SFIXED64"

    const/16 v23, 0xe

    const/16 v24, 0xe

    move-object/from16 v21, v0

    move-object/from16 v25, v29

    move-object/from16 v26, v60

    invoke-direct/range {v21 .. v26}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->w:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v21, v0

    const-string v23, "SINT32"

    const/16 v24, 0xf

    const/16 v25, 0xf

    move-object/from16 v22, v0

    move-object/from16 v26, v29

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->x:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v22, v0

    const-string v24, "SINT64"

    const/16 v25, 0x10

    const/16 v26, 0x10

    move-object/from16 v23, v0

    move-object/from16 v27, v29

    move-object/from16 v28, v60

    invoke-direct/range {v23 .. v28}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->y:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v23, v0

    const-string v25, "GROUP"

    const/16 v26, 0x11

    const/16 v27, 0x11

    move-object/from16 v24, v0

    move-object/from16 v28, v29

    move-object/from16 v29, v66

    invoke-direct/range {v24 .. v29}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->b:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v24, v0

    const-string v31, "DOUBLE_LIST"

    const/16 v32, 0x12

    const/16 v33, 0x12

    sget-object v65, Lbu;->b:Lbu;

    move-object/from16 v30, v0

    move-object/from16 v34, v65

    move-object/from16 v35, v47

    invoke-direct/range {v30 .. v35}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->z:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v25, v0

    const-string v31, "FLOAT_LIST"

    const/16 v32, 0x13

    const/16 v33, 0x13

    move-object/from16 v30, v0

    move-object/from16 v35, v53

    invoke-direct/range {v30 .. v35}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->A:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v26, v0

    const-string v31, "INT64_LIST"

    const/16 v32, 0x14

    const/16 v33, 0x14

    move-object/from16 v30, v0

    move-object/from16 v35, v60

    invoke-direct/range {v30 .. v35}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->B:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v27, v0

    const-string v31, "UINT64_LIST"

    const/16 v32, 0x15

    const/16 v33, 0x15

    move-object/from16 v30, v0

    invoke-direct/range {v30 .. v35}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->C:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v28, v0

    const-string v31, "INT32_LIST"

    const/16 v32, 0x16

    const/16 v33, 0x16

    move-object/from16 v30, v0

    move-object/from16 v35, v1

    invoke-direct/range {v30 .. v35}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->D:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v29, v0

    const-string v31, "FIXED64_LIST"

    const/16 v32, 0x17

    const/16 v33, 0x17

    move-object/from16 v30, v0

    move-object/from16 v35, v60

    invoke-direct/range {v30 .. v35}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->E:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v30, v0

    const-string v32, "FIXED32_LIST"

    const/16 v33, 0x18

    const/16 v34, 0x18

    move-object/from16 v31, v0

    move-object/from16 v35, v65

    move-object/from16 v36, v1

    invoke-direct/range {v31 .. v36}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->F:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v31, v0

    const-string v33, "BOOL_LIST"

    const/16 v34, 0x19

    const/16 v35, 0x19

    move-object/from16 v32, v0

    move-object/from16 v36, v65

    move-object/from16 v37, v2

    invoke-direct/range {v32 .. v37}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->G:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v32, v0

    const-string v34, "STRING_LIST"

    const/16 v35, 0x1a

    const/16 v36, 0x1a

    move-object/from16 v33, v0

    move-object/from16 v37, v65

    invoke-direct/range {v33 .. v38}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->H:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v33, v0

    const-string v40, "MESSAGE_LIST"

    const/16 v41, 0x1b

    const/16 v42, 0x1b

    move-object/from16 v39, v0

    move-object/from16 v43, v65

    move-object/from16 v44, v66

    invoke-direct/range {v39 .. v44}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->c:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v34, v0

    const-string v40, "BYTES_LIST"

    const/16 v41, 0x1c

    const/16 v42, 0x1c

    move-object/from16 v39, v0

    move-object/from16 v44, v3

    invoke-direct/range {v39 .. v44}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->I:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v35, v0

    const-string v37, "UINT32_LIST"

    const/16 v38, 0x1d

    const/16 v39, 0x1d

    move-object/from16 v36, v0

    move-object/from16 v40, v65

    move-object/from16 v41, v1

    invoke-direct/range {v36 .. v41}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->J:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v36, v0

    const-string v40, "ENUM_LIST"

    const/16 v41, 0x1e

    const/16 v42, 0x1e

    move-object/from16 v39, v0

    move-object/from16 v44, v4

    invoke-direct/range {v39 .. v44}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->K:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v37, v0

    const-string v39, "SFIXED32_LIST"

    const/16 v40, 0x1f

    const/16 v41, 0x1f

    move-object/from16 v38, v0

    move-object/from16 v42, v65

    move-object/from16 v43, v1

    invoke-direct/range {v38 .. v43}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->L:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v38, v0

    const-string v40, "SFIXED64_LIST"

    const/16 v41, 0x20

    const/16 v42, 0x20

    move-object/from16 v39, v0

    move-object/from16 v43, v65

    move-object/from16 v44, v60

    invoke-direct/range {v39 .. v44}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->M:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v39, v0

    const-string v41, "SINT32_LIST"

    const/16 v42, 0x21

    const/16 v43, 0x21

    move-object/from16 v40, v0

    move-object/from16 v44, v65

    move-object/from16 v45, v1

    invoke-direct/range {v40 .. v45}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->N:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v40, v0

    const-string v42, "SINT64_LIST"

    const/16 v43, 0x22

    const/16 v44, 0x22

    move-object/from16 v41, v0

    move-object/from16 v45, v65

    move-object/from16 v46, v60

    invoke-direct/range {v41 .. v46}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->O:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v41, v0

    const-string v43, "DOUBLE_LIST_PACKED"

    const/16 v44, 0x23

    const/16 v45, 0x23

    sget-object v3, Lbu;->c:Lbu;

    move-object/from16 v42, v0

    move-object/from16 v46, v3

    invoke-direct/range {v42 .. v47}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->d:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v42, v0

    const-string v49, "FLOAT_LIST_PACKED"

    const/16 v50, 0x24

    const/16 v51, 0x24

    move-object/from16 v48, v0

    move-object/from16 v52, v3

    invoke-direct/range {v48 .. v53}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->P:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v43, v0

    const-string v55, "INT64_LIST_PACKED"

    const/16 v56, 0x25

    const/16 v57, 0x25

    move-object/from16 v54, v0

    move-object/from16 v58, v3

    move-object/from16 v59, v60

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->Q:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v44, v0

    const-string v55, "UINT64_LIST_PACKED"

    const/16 v56, 0x26

    const/16 v57, 0x26

    move-object/from16 v54, v0

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->R:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v45, v0

    const-string v55, "INT32_LIST_PACKED"

    const/16 v56, 0x27

    const/16 v57, 0x27

    move-object/from16 v54, v0

    move-object/from16 v59, v1

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->S:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v46, v0

    const-string v55, "FIXED64_LIST_PACKED"

    const/16 v56, 0x28

    const/16 v57, 0x28

    move-object/from16 v54, v0

    move-object/from16 v59, v60

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->T:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v47, v0

    const-string v55, "FIXED32_LIST_PACKED"

    const/16 v56, 0x29

    const/16 v57, 0x29

    move-object/from16 v54, v0

    move-object/from16 v59, v1

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->U:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v48, v0

    const-string v55, "BOOL_LIST_PACKED"

    const/16 v56, 0x2a

    const/16 v57, 0x2a

    move-object/from16 v54, v0

    move-object/from16 v59, v2

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->V:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v49, v0

    const-string v55, "UINT32_LIST_PACKED"

    const/16 v56, 0x2b

    const/16 v57, 0x2b

    move-object/from16 v54, v0

    move-object/from16 v59, v1

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->W:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v50, v0

    const-string v55, "ENUM_LIST_PACKED"

    const/16 v56, 0x2c

    const/16 v57, 0x2c

    move-object/from16 v54, v0

    move-object/from16 v59, v4

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->X:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v51, v0

    const-string v55, "SFIXED32_LIST_PACKED"

    const/16 v56, 0x2d

    const/16 v57, 0x2d

    move-object/from16 v54, v0

    move-object/from16 v59, v1

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->Y:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v52, v0

    const-string v55, "SFIXED64_LIST_PACKED"

    const/16 v56, 0x2e

    const/16 v57, 0x2e

    move-object/from16 v54, v0

    move-object/from16 v59, v60

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->Z:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v53, v0

    const-string v55, "SINT32_LIST_PACKED"

    const/16 v56, 0x2f

    const/16 v57, 0x2f

    move-object/from16 v54, v0

    move-object/from16 v59, v1

    invoke-direct/range {v54 .. v59}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->aa:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v54, v0

    const-string v56, "SINT64_LIST_PACKED"

    const/16 v57, 0x30

    const/16 v58, 0x30

    move-object/from16 v55, v0

    move-object/from16 v59, v3

    invoke-direct/range {v55 .. v60}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->e:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v55, v0

    const-string v62, "GROUP_LIST"

    const/16 v63, 0x31

    const/16 v64, 0x31

    move-object/from16 v61, v0

    invoke-direct/range {v61 .. v66}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->f:Lbv;

    new-instance v0, Lbv;

    move-object/from16 v56, v0

    const-string v68, "MAP"

    const/16 v69, 0x32

    const/16 v70, 0x32

    sget-object v71, Lbu;->d:Lbu;

    sget-object v72, Lco;->a:Lco;

    move-object/from16 v67, v0

    invoke-direct/range {v67 .. v72}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->g:Lbv;

    filled-new-array/range {v6 .. v56}, [Lbv;

    move-result-object v0

    sput-object v0, Lbv;->ac:[Lbv;

    invoke-static {}, Lbv;->values()[Lbv;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lbv;

    sput-object v1, Lbv;->ab:[Lbv;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lbv;->ab:[Lbv;

    iget v5, v3, Lbv;->h:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILbu;Lco;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbv;->h:I

    iput-object p4, p0, Lbv;->i:Lbu;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p5, Lco;->k:Ljava/lang/Class;

    :goto_0
    sget-object p0, Lbu;->a:Lbu;

    if-ne p4, p0, :cond_1

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    :cond_1
    return-void
.end method

.method public static values()[Lbv;
    .locals 1

    sget-object v0, Lbv;->ac:[Lbv;

    invoke-virtual {v0}, [Lbv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbv;

    return-object v0
.end method
