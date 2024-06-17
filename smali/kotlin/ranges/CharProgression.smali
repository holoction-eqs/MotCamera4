.class public abstract Lkotlin/ranges/CharProgression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final first:C

.field public final last:C

.field public final step:I


# direct methods
.method public constructor <init>(CC)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lkotlin/ranges/CharProgression;->first:C

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lkotlin/ResultKt;->getProgressionLastElement(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lkotlin/ranges/CharProgression;->last:C

    iput v0, p0, Lkotlin/ranges/CharProgression;->step:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lkotlin/ranges/CharProgressionIterator;

    iget v1, p0, Lkotlin/ranges/CharProgression;->step:I

    iget-char v2, p0, Lkotlin/ranges/CharProgression;->first:C

    iget-char p0, p0, Lkotlin/ranges/CharProgression;->last:C

    invoke-direct {v0, v2, p0, v1}, Lkotlin/ranges/CharProgressionIterator;-><init>(CCI)V

    return-object v0
.end method
