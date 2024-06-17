.class public final Landroidx/fragment/app/LogWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBuilder:Ljava/lang/CharSequence;

.field public final mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/CharSequence;

    const-string v0, "FragmentManager"

    iput-object v0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/LogWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/LogWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flushBuilder()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/CharSequence;

    move-object v1, v0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    check-cast p0, Ljava/lang/StringBuilder;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final write(I)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void

    .line 2
    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {p0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final write([CII)V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/LogWriter;->$r8$classId:I

    iget-object v1, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/CharSequence;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v2, p2, v0

    .line 3
    aget-char v2, p1, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    goto :goto_1

    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 4
    :goto_2
    check-cast v1, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object p0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {p0, v1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
