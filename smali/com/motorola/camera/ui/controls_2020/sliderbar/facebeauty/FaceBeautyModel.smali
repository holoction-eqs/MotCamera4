.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public default:I

.field public final image:I

.field public final key:Ljava/lang/String;

.field public max:I

.field public min:I

.field public state:I

.field public final text:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->min:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->max:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->min:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->min:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->max:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->max:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->min:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->max:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->min:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->max:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FaceBeautyModel(key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->stringValueOf$1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", default="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", image="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    const-string v0, ")"

    invoke-static {v4, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
