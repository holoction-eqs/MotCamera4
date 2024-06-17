.class public final Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final kotlinArrayTypeToPrimitiveKotlinType:Ljava/util/Map;

.field public final primitiveTypeToArrayKotlinType:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives;->primitiveTypeToArrayKotlinType:Ljava/util/Map;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives;->kotlinArrayTypeToPrimitiveKotlinType:Ljava/util/Map;

    return-void
.end method
