.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:J

.field public static final zzb:Z

.field public static final zzc:Lsun/misc/Unsafe;

.field public static final zzd:Ljava/lang/Class;

.field public static final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

.field public static final zzg:Z

.field public static final zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-class v0, Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzg()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc:Lsun/misc/Unsafe;

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcn;->$r8$clinit:I

    const-class v2, Llibcore/io/Memory;

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzv(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzv(Ljava/lang/Class;)Z

    move-result v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    const-string v1, "getLong"

    const-class v4, Ljava/lang/reflect/Field;

    const-string v5, "objectFieldOffset"

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v10, v8, [Ljava/lang/Class;

    aput-object v4, v10, v9

    invoke-virtual {v3, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v10, v6, [Ljava/lang/Class;

    aput-object v7, v10, v9

    aput-object v2, v10, v8

    invoke-virtual {v3, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzB()Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v8

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzh(Ljava/lang/Throwable;)V

    :goto_2
    move v2, v9

    :goto_3
    sput-boolean v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzg:Z

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v7, v3, v9

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putInt"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v9

    aput-object v4, v5, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v6, [Ljava/lang/Class;

    aput-object v7, v0, v9

    aput-object v4, v0, v8

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v7, v1, v9

    aput-object v4, v1, v8

    aput-object v4, v1, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    new-array v1, v6, [Ljava/lang/Class;

    aput-object v7, v1, v9

    aput-object v4, v1, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v7, v1, v9

    aput-object v4, v1, v8

    aput-object v7, v1, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzh(Ljava/lang/Throwable;)V

    :goto_4
    move v0, v9

    :goto_5
    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzh:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza:J

    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzA(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzA(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzA(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzA(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzA(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzA(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzB()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_6

    :cond_7
    move v8, v9

    :goto_6
    sput-boolean v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb:Z

    return-void
.end method

.method public static zzA(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static zzB()Ljava/lang/reflect/Field;
    .locals 4

    const-class v0, Ljava/nio/Buffer;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcn;->$r8$clinit:I

    const-string v1, "effectiveDirectAddress"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    const-string v1, "address"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    return-object v0

    :cond_0
    move-object v2, v1

    :cond_1
    return-object v2
.end method

.method public static zzD(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzE(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zza(JLjava/lang/Object;)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza(JLjava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static zzb(JLjava/lang/Object;)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zzb(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static zzc(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static zzd(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzf(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zzg()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static bridge synthetic zzh(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzm(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static zzo(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zze(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static zzp(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zzf(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static zzq(Ljava/lang/Object;IJ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p2, p3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzr(Ljava/lang/Object;JJ)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic zzt(JLjava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic zzu(JLjava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzv(Ljava/lang/Class;)Z
    .locals 10

    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcn;->$r8$clinit:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v6, v8, v7

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v1

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v1

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v1

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v1
.end method

.method public static zzw(JLjava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zzg(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzz(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
