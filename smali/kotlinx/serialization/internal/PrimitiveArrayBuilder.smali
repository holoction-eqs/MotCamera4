.class public abstract Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public abstract build$kotlinx_serialization_core()Ljava/lang/Object;
.end method

.method public abstract ensureCapacity$kotlinx_serialization_core(I)V
.end method

.method public abstract getPosition$kotlinx_serialization_core()I
.end method
