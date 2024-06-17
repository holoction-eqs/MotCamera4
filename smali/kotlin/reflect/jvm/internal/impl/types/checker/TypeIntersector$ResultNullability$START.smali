.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$START;
.super Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "START"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final combine(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    .locals 0

    const-string p0, "nextType"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->getResultNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    move-result-object p0

    return-object p0
.end method
