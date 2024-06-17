.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p2, p0, p1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const-string p0, "glDeleteBuffers"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
