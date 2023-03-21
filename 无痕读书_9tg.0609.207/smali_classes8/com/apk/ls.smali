.class public Lcom/apk/ls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ls$if;
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:[Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public final new:Ljava/lang/String;

.field public final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/ls$if;Lcom/apk/ls$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/apk/ls$if;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/ls;->do:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/apk/ls$if;->if:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/apk/ls;->if:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/apk/ls$if;->for:[Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/apk/ls;->for:[Ljava/lang/String;

    .line 8
    iget-object p2, p1, Lcom/apk/ls$if;->new:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/apk/ls;->new:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/apk/ls$if;->try:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/apk/ls;->try:Ljava/lang/String;

    return-void
.end method
