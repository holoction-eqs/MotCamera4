.class public Lcom/meicam/effect/sdk/NvsFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public famlily:Ljava/lang/String;

.field public isItalic:Z

.field public postScriptName:Ljava/lang/String;

.field public weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->famlily:Ljava/lang/String;

    iput p2, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->weight:I

    iput-boolean p3, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->isItalic:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->famlily:Ljava/lang/String;

    iput p2, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->weight:I

    iput-boolean p3, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->isItalic:Z

    iput-object p4, p0, Lcom/meicam/effect/sdk/NvsFontInfo;->postScriptName:Ljava/lang/String;

    return-void
.end method
