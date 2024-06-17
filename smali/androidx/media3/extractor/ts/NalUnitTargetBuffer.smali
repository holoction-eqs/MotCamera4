.class public final Landroidx/media3/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public isCompleted:Z

.field public isFilling:Z

.field public nalData:Ljava/lang/Object;

.field public nalLength:I

.field public targetType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/16 p1, 0x83

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    const/4 p0, 0x2

    const/4 v0, 0x1

    aput-byte v0, p1, p0

    return-void
.end method


# virtual methods
.method public final appendToNalUnit(II[B)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p1

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    array-length v1, v1

    iget v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int v3, v2, p2

    if-ge v1, v3, :cond_1

    check-cast v0, [B

    add-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    return-void
.end method

.method public final assignFromView(Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    :goto_0
    iput p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    return-void
.end method

.method public final assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->assignFromView(Landroid/view/View;I)V

    return-void

    :cond_0
    iput p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    iget-boolean p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    if-lez p2, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v3, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr v2, p1

    if-gez v2, :cond_2

    iget p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    if-lez v2, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p2

    iget-object p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v3

    if-gez p1, :cond_2

    iget p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    :goto_0
    iput p2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    :cond_2
    return-void
.end method

.method public final endNalUnit(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return p1
.end method

.method public final reset()V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return-void

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final startNalUnit(I)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
