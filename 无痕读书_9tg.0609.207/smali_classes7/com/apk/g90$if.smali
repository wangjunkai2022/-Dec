.class public Lcom/apk/g90$if;
.super Lcom/apk/y80;
.source "TrFeedBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/g90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/y80<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/y80;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public native(Lcom/apk/r80;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_feedback_item_name:I

    invoke-virtual {p1, p3, p2}, Lcom/apk/r80;->new(ILjava/lang/String;)V

    return-void
.end method

.method public public()I
    .locals 1

    .line 1
    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_feedback_item_layout:I

    return v0
.end method
