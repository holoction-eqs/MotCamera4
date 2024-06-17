.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;
.source "SourceFile"


# instance fields
.field public final type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 2

    new-instance v0, Landroidx/work/JobListenableFuture$1;

    const/16 v1, 0x1b

    invoke-direct {v0, p2, v1}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method
