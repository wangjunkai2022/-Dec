.class public Lcom/apk/q7;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Lcom/apk/r7;


# direct methods
.method public constructor <init>(Lcom/apk/r7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q7;->do:Lcom/apk/r7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/q7;->do:Lcom/apk/r7;

    iget-object v0, v0, Lcom/apk/r7;->for:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
