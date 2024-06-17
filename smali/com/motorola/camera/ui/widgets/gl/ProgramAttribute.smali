.class public final Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mComponents:I

.field public final mIndex:I

.field public mLength:I

.field public final mName:Ljava/lang/String;

.field public mOffset:I

.field public mShouldNormalize:Z

.field public mStride:I

.field public mType:I

.field public mValues:Ljava/nio/FloatBuffer;

.field public mVbo:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    return-void
.end method


# virtual methods
.method public final set(IIII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    const/16 p1, 0x1406

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    if-eqz p4, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "vbo can\'t be 0!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(II[F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    const/16 p1, 0x1406

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    array-length p2, p3

    if-eq p1, p2, :cond_0

    .line 2
    array-length p1, p3

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    .line 3
    array-length p1, p3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mLength:I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mName:Ljava/lang/String;

    return-object p0
.end method
