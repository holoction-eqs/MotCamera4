.class public abstract Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzbc;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzbc;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "vision.barcode"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v5, "vision.custom.ica"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "vision.face"

    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v7, "vision.ica"

    invoke-direct {v6, v3, v4, v7}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "vision.ocr"

    invoke-direct {v7, v3, v4, v8}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v9, "mlkit.langid"

    invoke-direct {v8, v3, v4, v9}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/common/Feature;

    const-string v10, "mlkit.nlclassifier"

    invoke-direct {v9, v3, v4, v10}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/common/Feature;

    const-string v11, "tflite_dynamite"

    invoke-direct {v10, v3, v4, v11}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/common/Feature;

    const-string v13, "mlkit.barcode.ui"

    invoke-direct {v12, v3, v4, v13}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.smartreply"

    invoke-direct {v13, v3, v4, v14}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v3, Lcom/adobe/xmp/impl/ByteBuffer;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(II)V

    const-string v14, "barcode"

    invoke-virtual {v3, v14, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v14, "custom_ica"

    invoke-virtual {v3, v14, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v14, "face"

    invoke-virtual {v3, v14, v5}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v14, "ica"

    invoke-virtual {v3, v14, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v14, "ocr"

    invoke-virtual {v3, v14, v7}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v14, "langid"

    invoke-virtual {v3, v14, v8}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v14, "nlclassifier"

    invoke-virtual {v3, v14, v9}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3, v11, v10}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v11, "barcode_ui"

    invoke-virtual {v3, v11, v12}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v11, "smart_reply"

    invoke-virtual {v3, v11, v13}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ByteBuffer;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbc;

    move-result-object v3

    sput-object v3, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    new-instance v3, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v3, v4, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(II)V

    const-string v0, "com.google.android.gms.vision.barcode"

    invoke-virtual {v3, v0, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.custom.ica"

    invoke-virtual {v3, v0, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.face"

    invoke-virtual {v3, v0, v5}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.ica"

    invoke-virtual {v3, v0, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.ocr"

    invoke-virtual {v3, v0, v7}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.mlkit.langid"

    invoke-virtual {v3, v0, v8}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.mlkit.nlclassifier"

    invoke-virtual {v3, v0, v9}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.tflite_dynamite"

    invoke-virtual {v3, v0, v10}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.mlkit_smartreply"

    invoke-virtual {v3, v0, v13}, Lcom/adobe/xmp/impl/ByteBuffer;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/ByteBuffer;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbc;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    return-void
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0xd33d260

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    invoke-static {p1, v0}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_common/zzbc;)[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzo;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string v1, "APIs must not be empty."

    invoke-static {v1, p1}, Landroidx/room/util/DBUtil;->checkArgument(Ljava/lang/String;Z)V

    new-instance p1, Lcom/google/android/gms/common/internal/service/zao;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/internal/service/zao;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zaa(Ljava/util/List;Z)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    invoke-direct {p0, v1, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(IZ)V

    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzu;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    filled-new-array {v3}, [Lcom/google/android/gms/common/Feature;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    const/16 v2, 0x6aa8

    iput v2, v0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p1, p0}, Lcom/motorola/camera/CameraKpi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzu;->build()Lcom/google/android/gms/common/internal/zzu;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p1

    :goto_0
    sget-object p0, Lkotlin/UInt$Companion;->zza$1:Lkotlin/UInt$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.vision.DEPENDENCY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.vision.DEPENDENCIES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "requester_app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_common/zzbc;)[Lcom/google/android/gms/common/Feature;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/Feature;

    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
