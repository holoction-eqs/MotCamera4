.class public abstract Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;
.source "SourceFile"


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/time/Duration$Companion;-><init>(II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->Companion:Lkotlin/time/Duration$Companion;

    return-void
.end method


# virtual methods
.method public final get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p0

    return-object p0
.end method

.method public abstract get(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
.end method
