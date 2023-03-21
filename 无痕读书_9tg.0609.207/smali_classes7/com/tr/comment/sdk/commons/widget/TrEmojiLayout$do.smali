.class public Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;
.super Lcom/apk/y80;
.source "TrEmojiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/apk/ga0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/apk/y80;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public native(Lcom/apk/r80;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/apk/ga0;

    .line 2
    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_emoji_iv:I

    .line 3
    iget p2, p2, Lcom/apk/ga0;->for:I

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/apk/r80;->for(II)V

    return-void
.end method

.method public public()I
    .locals 1

    .line 1
    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_emoji_item_view:I

    return v0
.end method
