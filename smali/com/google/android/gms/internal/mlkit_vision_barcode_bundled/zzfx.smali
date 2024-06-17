.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

.field public final zzc:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    if-nez v1, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    iget v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzd:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    const-string v4, "Protobuf runtime is not correctly loaded."

    if-eqz v3, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)V

    :goto_2
    move-object v1, v3

    goto :goto_8

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzc()I

    move-result v1

    if-ne v1, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    if-eqz v5, :cond_7

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->$r8$clinit:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    goto :goto_4

    :cond_7
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->$r8$clinit:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    :goto_4
    sget v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->$r8$clinit:I

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzc()I

    move-result v1

    if-ne v1, v5, :cond_9

    goto :goto_5

    :cond_9
    move v5, v6

    :goto_5
    if-eqz v5, :cond_b

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->$r8$clinit:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->$r8$clinit:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    :goto_6
    sget v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->$r8$clinit:I

    :goto_7
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    move-result-object p0

    move-object v1, p0

    :goto_8
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    if-nez p0, :cond_c

    goto :goto_9

    :cond_c
    return-object p0

    :cond_d
    :goto_9
    return-object v1

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
