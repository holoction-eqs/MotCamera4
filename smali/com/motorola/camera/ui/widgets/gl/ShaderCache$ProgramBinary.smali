.class public final Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBinary:Ljava/nio/ByteBuffer;

.field public final mFormat:I


# direct methods
.method public static -$$Nest$mwrite(Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;Ljava/io/DataOutputStream;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method
