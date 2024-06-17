.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const v0, 0x3c23d70a    # 0.01f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;->$r8$classId:I

    const-string v4, "progress"

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    packed-switch v3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p0, p0

    div-float v2, p1, p0

    :goto_0
    cmpl-float p0, v2, v1

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    cmpg-float p0, v1, v0

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const/16 p0, 0x64

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    if-nez p1, :cond_4

    const/4 p0, -0x1

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_3
    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    goto :goto_4

    :cond_5
    move v5, p1

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_5
    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    int-to-float p1, p1

    int-to-float p0, p0

    div-float v2, p1, p0

    :goto_6
    cmpl-float p0, v2, v1

    if-lez p0, :cond_7

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    cmpg-float p0, v1, v0

    if-gez p0, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
