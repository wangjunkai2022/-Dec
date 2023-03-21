.class public Lcom/apk/c8;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c8;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/apk/c8;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->k(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/apk/c8;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->j(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    :goto_0
    return-void
.end method
