.class public final Lcom/airbnb/lottie/model/layer/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blurEffect:Lcom/google/common/base/Joiner;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final dropShadowEffect:Lcom/airbnb/lottie/parser/DropShadowEffect;

.field public final hidden:Z

.field public final inOutKeyframes:Ljava/util/List;

.field public final layerId:J

.field public final layerName:Ljava/lang/String;

.field public final layerType:I

.field public final masks:Ljava/util/List;

.field public final matteType:I

.field public final parentId:J

.field public final preCompHeight:F

.field public final preCompWidth:F

.field public final refId:Ljava/lang/String;

.field public final shapes:Ljava/util/List;

.field public final solidColor:I

.field public final solidHeight:I

.field public final solidWidth:I

.field public final startFrame:F

.field public final text:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final textProperties:Landroidx/work/WorkQuery$Builder;

.field public final timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final timeStretch:F

.field public final transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/google/android/gms/internal/mlkit_common/zzpx;Landroidx/work/WorkQuery$Builder;Ljava/util/List;ILcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/google/common/base/Joiner;Lcom/airbnb/lottie/parser/DropShadowEffect;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v1, p3

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    move v1, p6

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerType:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    move-object v1, p9

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move v1, p12

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    move/from16 v1, p13

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    move/from16 v1, p14

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    move/from16 v1, p15

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    move/from16 v1, p16

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    move/from16 v1, p17

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:F

    move/from16 v1, p18

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:F

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Landroidx/work/WorkQuery$Builder;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    move/from16 v1, p22

    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->matteType:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/google/common/base/Joiner;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->dropShadowEffect:Lcom/airbnb/lottie/parser/DropShadowEffect;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2
    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4, v2, v3}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    invoke-virtual {v4, v2, v3}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "->"

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tMasks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tBackground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%dx%d %X\n"

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
