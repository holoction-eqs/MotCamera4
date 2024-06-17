.class public final Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public newListEnd:I

.field public newListStart:I

.field public oldListEnd:I

.field public oldListStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    return-void
.end method
