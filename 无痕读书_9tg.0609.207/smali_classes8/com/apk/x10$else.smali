.class public Lcom/apk/x10$else;
.super Ljava/lang/Object;
.source "ComicRankFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/x10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$else;->do:Lcom/apk/x10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/x10$else;->do:Lcom/apk/x10;

    .line 2
    iget-object p1, p1, Lcom/apk/x10;->else:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/x10$else;->do:Lcom/apk/x10;

    invoke-static {p1}, Lcom/apk/x10;->a(Lcom/apk/x10;)V

    return-void
.end method
