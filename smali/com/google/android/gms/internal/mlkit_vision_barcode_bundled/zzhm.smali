.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhm;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const-string v0, "Unpaired surrogate at index "

    const-string v1, " of "

    invoke-static {v0, p1, v1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
