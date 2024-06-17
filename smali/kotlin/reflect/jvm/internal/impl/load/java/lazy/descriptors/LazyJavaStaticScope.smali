.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticScope;
.super Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;)V

    return-void
.end method


# virtual methods
.method public computeNonDeclaredProperties(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final resolveMethodSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$MethodSignatureData;
    .locals 0

    const-string p0, "method"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "valueParameters"

    invoke-static {p4, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$MethodSignatureData;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p4, p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$MethodSignatureData;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object p0
.end method
