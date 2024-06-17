.class public final enum Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;


# instance fields
.field public final carouselBottom:F

.field public final height:F

.field public final modeControlBarSize:F

.field public final preview169Align:I

.field public final preview43Align:I

.field public final previewCropSize:F

.field public final uiBottomAlign:I

.field public final width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 66

    new-instance v11, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout16_9"

    const/4 v2, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/high16 v6, 0x42800000    # 64.0f

    const/4 v7, 0x0

    const/16 v21, 0x1

    const/16 v32, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v0, v11

    move v8, v9

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    sput-object v11, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v34, "Layout18_9"

    const/16 v35, 0x1

    const/high16 v36, 0x44340000    # 720.0f

    const/high16 v26, 0x43b40000    # 360.0f

    const/4 v0, 0x0

    const/high16 v28, 0x42800000    # 64.0f

    const/high16 v44, 0x41600000    # 14.0f

    const/16 v54, 0x3

    const/high16 v37, 0x43b40000    # 360.0f

    const/16 v38, 0x0

    const/high16 v39, 0x42800000    # 64.0f

    const/high16 v40, 0x41600000    # 14.0f

    const/16 v42, 0x3

    const/16 v43, 0x2

    move-object/from16 v33, v1

    move/from16 v41, v42

    invoke-direct/range {v33 .. v43}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v38, "Layout189_9"

    const/16 v39, 0x2

    const/high16 v40, 0x443d0000    # 756.0f

    const/high16 v41, 0x43b40000    # 360.0f

    const/16 v42, 0x0

    const/high16 v43, 0x42800000    # 64.0f

    const/16 v46, 0x3

    const/16 v47, 0x2

    move-object/from16 v37, v2

    move/from16 v45, v46

    invoke-direct/range {v37 .. v47}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v38, "Layout19_9"

    const/16 v39, 0x3

    const/high16 v40, 0x443e0000    # 760.0f

    const/16 v19, 0x0

    const/16 v46, 0x2

    const/16 v44, 0x0

    const/16 v45, 0x3

    move-object/from16 v37, v3

    move/from16 v42, v0

    invoke-direct/range {v37 .. v47}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v23, "Layout195_9"

    const/16 v24, 0x4

    const/high16 v25, 0x44430000    # 780.0f

    const/high16 v27, 0x42100000    # 36.0f

    const/16 v29, 0x0

    const/16 v30, 0x3

    const/16 v31, 0x1

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v34, "Layout20_9"

    const/16 v35, 0x5

    const/high16 v36, 0x44480000    # 800.0f

    const/high16 v49, 0x43b40000    # 360.0f

    const/high16 v38, 0x42400000    # 48.0f

    const/16 v52, 0x0

    const/16 v32, 0x4

    const/high16 v37, 0x43b40000    # 360.0f

    const/high16 v39, 0x42800000    # 64.0f

    const/16 v40, 0x0

    const/16 v42, 0x3

    const/16 v43, 0x4

    move-object/from16 v33, v5

    move/from16 v41, v42

    invoke-direct/range {v33 .. v43}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    sput-object v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v56, "Layout205_9"

    const/16 v57, 0x6

    const/high16 v58, 0x444d0000    # 820.0f

    const/high16 v60, 0x42600000    # 56.0f

    const/high16 v59, 0x43b40000    # 360.0f

    const/high16 v61, 0x42800000    # 64.0f

    const/16 v62, 0x0

    const/16 v64, 0x3

    const/16 v65, 0x4

    move-object/from16 v55, v6

    move/from16 v63, v64

    invoke-direct/range {v55 .. v65}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    sput-object v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v23, "Layout21_9"

    const/16 v24, 0x7

    const/high16 v25, 0x44520000    # 840.0f

    const/high16 v27, 0x42880000    # 68.0f

    const/16 v31, 0x3

    move-object/from16 v22, v7

    move/from16 v30, v31

    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    sput-object v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v46, "Layout22_9"

    const/16 v47, 0x8

    const/high16 v48, 0x445c0000    # 880.0f

    const/high16 v50, 0x42900000    # 72.0f

    const/high16 v51, 0x42b00000    # 88.0f

    const/16 v53, 0x4

    const/16 v55, 0x3

    move-object/from16 v45, v8

    invoke-direct/range {v45 .. v55}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    sput-object v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v9, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v23, "Layout4_3"

    const/16 v24, 0x9

    const/high16 v25, 0x40800000    # 4.0f

    const/high16 v26, 0x40400000    # 3.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v0, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v22, v9

    move/from16 v30, v31

    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v10, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v34, "Layout3_4"

    const/16 v35, 0xa

    const/high16 v25, 0x40400000    # 3.0f

    const/high16 v37, 0x40800000    # 4.0f

    const/high16 v36, 0x40400000    # 3.0f

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v42, 0x1

    const/16 v43, 0x1

    move-object/from16 v33, v10

    move/from16 v41, v42

    invoke-direct/range {v33 .. v43}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v33, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v23, "Layout3_418"

    const/16 v24, 0xb

    const v26, 0x4085c28f    # 4.18f

    move-object/from16 v22, v33

    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    new-instance v23, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v13, "Layout1_1"

    const/16 v14, 0xc

    const v15, 0x44854000    # 1066.0f

    const/high16 v16, 0x44840000    # 1056.0f

    move-object/from16 v12, v23

    move/from16 v20, v21

    move/from16 v22, v0

    invoke-direct/range {v12 .. v22}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFIII)V

    move-object v0, v11

    move-object/from16 v11, v33

    filled-new-array/range {v0 .. v12}, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFFFFIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    iput p5, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    iput p6, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->modeControlBarSize:F

    iput p7, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    iput p8, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    iput p9, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    iput p10, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object v0
.end method
