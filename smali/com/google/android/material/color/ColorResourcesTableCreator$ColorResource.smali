.class public final Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final entryId:S

.field public final name:Ljava/lang/String;

.field public final packageId:B

.field public final typeId:B

.field public final value:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    const p2, 0xffff

    and-int/2addr p2, p1

    int-to-short p2, p2

    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    return-void
.end method
