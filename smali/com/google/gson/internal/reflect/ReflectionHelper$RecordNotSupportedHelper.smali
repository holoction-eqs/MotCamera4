.class public final Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;
.source "SourceFile"


# virtual methods
.method public final getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Records are not supported on this JVM, this method should not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Records are not supported on this JVM, this method should not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Records are not supported on this JVM, this method should not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isRecord(Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
