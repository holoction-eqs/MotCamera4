.class public final enum Lcom/motorola/camera/mcf/McfCallback$CallbackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum BST_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum JG_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum MOT_DRSDV2:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum MOT_NV_DETECT:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v2, "BEST_SHOT_VIDEO_TRIGGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v2, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v3, "REAL_TIME_DEPTH_STATUS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v3, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v4, "MODEL_RESULTS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v4, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v5, "MODEL_LOAD_COMPLETE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v5, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v6, "AUTO_CAPTURE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v6, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v7, "AI_SCENE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v7, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v8, "ARCSOFT_DRSD"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v8, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v9, "MOT_DRSDV2"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MOT_DRSDV2:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v9, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v10, "BST_DRSD"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BST_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v10, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v11, "JG_DRSD"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->JG_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v11, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v12, "MOT_NV_DETECT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MOT_NV_DETECT:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    new-instance v12, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const/16 v13, 0xc

    const/16 v14, 0x65

    const-string v15, "FF_PROCESS_TIME_ESTIMATE"

    invoke-direct {v12, v15, v13, v14}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    filled-new-array/range {v0 .. v12}, [Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->$VALUES:[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->value:I

    return-void
.end method

.method public static toEnum(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "MODEL_RESULTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "MOT_DRSDV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "UNDEFINED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "MODEL_LOAD_COMPLETE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "AUTO_CAPTURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "AI_SCENE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "REAL_TIME_DEPTH_STATUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "BEST_SHOT_VIDEO_TRIGGER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "FF_PROCESS_TIME_ESTIMATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "MOT_NV_DETECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "JG_DRSD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "ARCSOFT_DRSD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "BST_DRSD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown CallbackType string: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MOT_DRSDV2:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_2
    return-object v0

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MOT_NV_DETECT:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->JG_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BST_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7c9b4405 -> :sswitch_c
        -0x3f18279e -> :sswitch_b
        -0x36efeadf -> :sswitch_a
        -0x348d6413 -> :sswitch_9
        -0x2f012dd5 -> :sswitch_8
        0xfa8076a -> :sswitch_7
        0x16fb64df -> :sswitch_6
        0x1ca0cd95 -> :sswitch_5
        0x258cb096 -> :sswitch_4
        0x2dc109bc -> :sswitch_3
        0x68377130 -> :sswitch_2
        0x6b3bd428 -> :sswitch_1
        0x7edd58a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->$VALUES:[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfCallback$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x65

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->value:I

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown CallbackType value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MOT_NV_DETECT:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->JG_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BST_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MOT_DRSDV2:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    :goto_0
    :pswitch_b
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown CallbackType enum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :pswitch_c
    const-string p0, "FF_PROCESS_TIME_ESTIMATE"

    return-object p0

    :pswitch_d
    const-string p0, "MOT_NV_DETECT"

    return-object p0

    :pswitch_e
    const-string p0, "JG_DRSD"

    return-object p0

    :pswitch_f
    const-string p0, "BST_DRSD"

    return-object p0

    :pswitch_10
    const-string p0, "MOT_DRSDV2"

    return-object p0

    :pswitch_11
    const-string p0, "ARCSOFT_DRSD"

    return-object p0

    :pswitch_12
    const-string p0, "AI_SCENE"

    return-object p0

    :pswitch_13
    const-string p0, "AUTO_CAPTURE"

    return-object p0

    :pswitch_14
    const-string p0, "MODEL_LOAD_COMPLETE"

    return-object p0

    :pswitch_15
    const-string p0, "MODEL_RESULTS"

    return-object p0

    :pswitch_16
    const-string p0, "REAL_TIME_DEPTH_STATUS"

    return-object p0

    :pswitch_17
    const-string p0, "BEST_SHOT_VIDEO_TRIGGER"

    return-object p0

    :pswitch_18
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
