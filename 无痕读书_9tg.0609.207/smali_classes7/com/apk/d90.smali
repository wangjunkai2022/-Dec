.class public Lcom/apk/d90;
.super Ljava/lang/Object;
.source "TrEmojiLayout.java"

# interfaces
.implements Lcom/apk/s90;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/s90<",
        "Lcom/apk/ga0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;

.field public final synthetic if:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d90;->if:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;

    iput-object p2, p0, Lcom/apk/d90;->do:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/r80;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/apk/ga0;

    .line 2
    iget-object p1, p0, Lcom/apk/d90;->do:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;

    invoke-virtual {p1}, Lcom/apk/s80;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/d90;->if:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;

    const-string p2, "/DEL"

    invoke-static {p1, p2}, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do(Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/apk/ga0;->do()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/apk/d90;->if:Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;

    invoke-static {p2, p1}, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do(Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
