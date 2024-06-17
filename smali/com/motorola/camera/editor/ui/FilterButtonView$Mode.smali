.class public final enum Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

.field public static final mLookUp:Ljava/util/HashMap;


# instance fields
.field public final mId:I

.field public final mText:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f12016b

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;-><init>(IILjava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const-string v2, "MONO"

    const/4 v4, 0x2

    const v5, 0x7f120169

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;-><init>(IILjava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const v3, 0x7f120165

    const-string v5, "ENHANCED"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v6, v5, v3}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;-><init>(IILjava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->$VALUES:[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    const-class v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    sget-object v2, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    iget v3, v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mId:I

    iput p4, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->$VALUES:[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v0}, [Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    return-object v0
.end method
