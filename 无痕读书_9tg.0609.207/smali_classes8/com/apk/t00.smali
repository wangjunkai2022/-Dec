.class public final synthetic Lcom/apk/t00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/t00;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/t00;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-virtual {v0}, Lcom/manhua/ui/activity/ComicReadActivity;->A()V

    return-void
.end method
