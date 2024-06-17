.class public abstract Landroidx/arch/core/internal/SafeIterableMap$ListIterator;
.super Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

.field public mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;


# direct methods
.method public constructor <init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0

    invoke-direct {p0}, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;-><init>()V

    iput-object p2, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->nextNode()Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v1

    iput-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method public final nextNode()Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 2

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p0, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    iget p0, p0, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_1

    :goto_0
    iget-object p0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_1
    return-object p0

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportRemove(Landroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 2

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :cond_0
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    iget v1, v1, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_1

    :goto_0
    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_1
    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :cond_1
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->nextNode()Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object p1

    iput-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
