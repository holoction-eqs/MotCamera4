.class public final Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final character:C

.field public final fontFamily:Ljava/lang/String;

.field public final shapes:Ljava/util/List;

.field public final style:Ljava/lang/String;

.field public final width:D


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    iput-char p2, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    iput-wide p3, p0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    iput-object p5, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    iput-object p6, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    iget-char v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
