.class public Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;
.super Lcom/apk/y80;
.source "TrUserFaceLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/y80<",
        "Lcom/apk/ga0;",
        ">;"
    }
.end annotation


# instance fields
.field public public:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/apk/ga0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/y80;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->switch()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;->public:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native(Lcom/apk/r80;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p2, Lcom/apk/ga0;

    .line 2
    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_userface_head_iv:I

    .line 3
    iget v0, p2, Lcom/apk/ga0;->for:I

    .line 4
    invoke-virtual {p1, p3, v0}, Lcom/apk/r80;->for(II)V

    .line 5
    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_userface_bg_iv:I

    .line 6
    invoke-virtual {p2}, Lcom/apk/ga0;->do()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;->public:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 7
    :goto_0
    invoke-virtual {p1, p3}, Lcom/apk/r80;->do(I)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public public()I
    .locals 1

    .line 1
    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_item_userface_layout:I

    return v0
.end method
